module ApplicationHelper

	def user_headings(user)
		user.headings.pluck(:title).join(', ').html_safe
	end

	def user_friends(user)
		user_ids = user.friend_ids
		user_ids.delete(user.id)
		User.where(id: user_ids)
	end
end
