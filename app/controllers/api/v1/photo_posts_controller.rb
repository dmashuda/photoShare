module Api
  module V1
    class PhotoPostsController < ActionController::Base
      respond_to :json

      def index
        results = PhotoPost.order(created_at: :desc).paginate(:page => params[:page], :per_page => 5)
        response = {}
        posts = Array.new()
        results.each  do |photo_post|
          posts.push({
              tag_list: photo_post.tag_list,
              id: photo_post.id,
              title: photo_post.title,
              url: photo_post.image.url,
              description: photo_post.description
          })
        end
        response[:results] = posts
        response[:current_page] = params[:page] || 0
        response[:total_entries] = results.total_pages

        respond_with response
      end

      def show
        result = PhotoPost.find(params[:id])
        response = {
            id: result.id,
            tag_list: result.tag_list,
            title: result.title,
            url: result.image.url,
            description: result.description
        }
        respond_with response
      end

      def create
        @photo_post = PhotoPost.new(photo_post_params)

        if @photo_post.save
          respond_with
        else
          error = {errors: @photo_post.errors, status: :unprocessable_entity}
          respond_with error
        end
      end

      def destroy
        @photo_post.destroy
        respond_with{ head :no_content }
      end


      private
      def photo_post_params
        params.require(:photo_post).permit(:title, :description, :tag_list, :image)
      end
    end
  end

end
