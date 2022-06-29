module Types
  class MutationType < Types::BaseObject
    # team
    field :create_team, mutation: Mutations::CreateTeam
    field :update_team, mutation: Mutations::UpdateTeam
    field :delete_team, mutation: Mutations::DeleteTeam
    # coach
    field :create_coach, mutation: Mutations::CreateCoach
    field :update_coach, mutation: Mutations::UpdateCoach
    field :delete_coach, mutation: Mutations::DeleteCoach
    # team_leader
    field :create_team_leader, mutation: Mutations::CreateTeamLeader
    field :update_team_leader, mutation: Mutations::UpdateTeamLeader
    field :delete_team_leader, mutation: Mutations::DeleteTeamLeader
    # gymnast
    field :create_gymnast, mutation: Mutations::CreateGymnast
    field :update_gymnast, mutation: Mutations::UpdateGymnast
    field :delete_gymnast, mutation: Mutations::DeleteGymnast
  end
end
