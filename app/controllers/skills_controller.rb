class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def show
    @skill = Skill.find(params[:id])
    render :show
  end

  def new
    @skill = Skill.new
    render :new
  end

  def edit
    @skill = Skill.find(params[:id])
    render :edit
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to  skills_path
    else
      render :new
    end
  end

  def update
    @skill= Skill.find(params[:id])
    if @skill.update(skill_params)
      redirect_to skills_path
    else
      render :edit
    end
  end

  private
  def skill_params
    params.require(:skill).permit(:name, :description)
  end






end