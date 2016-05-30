class MenusController < ApplicationController


    def index
      @menus = Menu.all
      if params[:keyword].present?
        @menus = @menus.where("title LIKE ? OR year = ?", "%#{params[:keyword]}%", params[:keyword])
      end

      respond_to do |format|
        format.html do
          render 'index'
        end
        format.json do
          render json: @menus
        end
        format.xml do
          render xml: @menus
        end
      end

    end

    def create
      @menu = Menu.new
    #   @menu.date = params[:menu][:date]
      @menu.date = Date.civil(params[:menu]["date(1i)"].to_i,params[:menu]["date(2i)"].to_i,params[:menu]["date(3i)"].to_i)
      @menu.food_id = params[:menu][:food_id]
      @menu.lunch = params[:menu][:lunch]
      @menu.comments = params[:menu][:comments]
      if @menu.save
        redirect_to menus_url, notice: "Menu added! Thanks!"
      else
        # redirect_to new_menu_url, notice: "Something went wrong!"
        render 'new'
      end
    end

    def show
      @menu = Menu.find_by(id: params[:id])
      if @menu == nil
        redirect_to menus_url
      end
      session["menu_id"] = @menu.id

      meal = @menu.food.id
      @values = []
      @names = []
      # It should return an Array of those who will be attending on that day
      atts = Attendance.where(date: @menu.date)
      for att in atts do
          score = Score.find_by(food_id: meal, user_id: att.user_id)
          if score
              @values << score.value
              if score.dont_like
                  @names << score.user.name
              end
          end
      end

      @avg = 0
      if @values != nil
          @values.each do |value|
             @avg += value
          end
          @avg = @avg / @values.length rescue 0
      end


    end

    def new
      @menu = Menu.new
    end

    def edit
      @menu = Menu.find_by(id: params[:id])
    end

    def update
      menu = Menu.find_by(id: params[:id])
      menu.date =  Date.civil(params[:menu]["date(1i)"].to_i,params[:menu]["date(2i)"].to_i,params[:menu]["date(3i)"].to_i)
      menu.food_id = params[:menu][:food_id]
      menu.lunch = params[:menu][:lunch]
      menu.comments = params[:menu][:comments]
      menu.save
      redirect_to menus_url(@menu)
    end

    def destroy
      menu = Menu.find_by(id: params[:id])
      if menu
        menu.delete
      end
      redirect_to menus_url
    end

end
