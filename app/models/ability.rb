class Ability
  include CanCan::Ability
#if you are going to use these in the show.html.erb you need to put above the <%link_to 
#<%if can? :actionperform, @model you want to perform it on checking users ability

#also in the controller.rb of function like def edit you would have to put at the bottom

#of the method unauthorized! if cannot? 
  alias_action :create, :read, :update, :destroy, to: :crud
  
  def initialize(user)
  can :read, :all 
  end 
  
end

  
  
  
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
