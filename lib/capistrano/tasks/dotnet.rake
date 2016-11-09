namespace :dotnet do
  desc <<-DESC
        Restores the dependencies and tools of a project

        Read more on:
        https://docs.microsoft.com/en-us/dotnet/articles/core/tools/dotnet-restore
    DESC
  task :restore do
    on roles fetch(:dotnet_roles) do
      within fetch(:dotnet_target_path, release_path) do
        with fetch(:dotnet_env_variables, {}) do
          execute :dotnet, 'restore', fetch(:dotnet_flags)
        end
      end
    end
  end

  desc <<-DESC
        Packs the application and all of its dependencies into a folder getting it ready for publishing.

        Read more on:
        https://docs.microsoft.com/en-us/dotnet/articles/core/tools/dotnet-publish
    DESC
  task :publish do
    on roles fetch(:dotnet_roles) do
      within fetch(:dotnet_target_path, release_path) do
        with fetch(:dotnet_env_variables, {}) do
          execute :dotnet, 'publish --output=build --configuration=Release'
        end
      end
    end
  end
end

namespace :load do
  task :defaults do
    set :dotnet_roles, :all
  end
end
