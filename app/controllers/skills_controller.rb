class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:alert] = "Skill has been deleted"
    redirect_to skills_path
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:notice] = "Skill successfully added!"
      redirect_to  skills_path
    else
      flash[:alert] = "SKILL NOT ADDED! Please correct errors below!"
      render :new
    end
  end

  def update
    @skill= Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:notice] = "Skill has been edited successfully"
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
