defmodule SupreethPortfolioWeb.HomeLive do
  @moduledoc """
  Landing page for Supreeth's portfolio.
  """
  use SupreethPortfolioWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    projects = [
      %{
        name: "LiveView Sprint Board",
        description:
          "Realtime sprint planning board powered by Phoenix LiveView with drag-and-drop story management and instant collaboration.",
        stack: ["Phoenix LiveView", "Tailwind CSS", "PostgreSQL"],
        link: "https://github.com/supreeth/liveview-sprint-board"
      },
      %{
        name: "Insight Pulse Dashboard",
        description:
          "Lightweight analytics portal that ingests API data, transforms it with Elixir pipelines, and renders responsive charts for stakeholders.",
        stack: ["Elixir", "Req", "Chart.js"],
        link: "https://github.com/supreeth/insight-pulse"
      }
    ]

    contact_links = [
      %{label: "Email", value: "hello@supreeth.dev", url: "mailto:hello@supreeth.dev"},
      %{label: "GitHub", value: "github.com/supreeth", url: "https://github.com/supreeth"},
      %{label: "LinkedIn", value: "linkedin.com/in/supreeth", url: "https://linkedin.com/in/supreeth"}
    ]

    socket =
      socket
      |> assign(:page_title, "Supreeth - Portfolio")
      |> assign(:hero, %{
        name: "Supreeth",
        title: "Phoenix & Elixir Developer",
        age: 22,
        summary:
          "I craft interactive, real-time Phoenix experiences and bridge backend services with clean, accessible interfaces."
      })
      |> assign(:about, """
      I'm a Computer Science graduate who loves building performant products with Elixir and Phoenix.
      From tiny CLI utilities to production-ready LiveView apps, I focus on reliability, clarity, and
      shipping features that people enjoy using.
      """)
      |> assign(:education, %{
        degree: "B.Tech in Computer Science & Engineering",
        year: 2024,
        institution: "B.Tech CSE (2024)"
      })
      |> assign(:skills, ["Elixir", "Phoenix", "Python Basics", "HTML", "CSS", "Git"])
      |> assign(:projects, projects)
      |> assign(:contact_links, contact_links)

    {:ok, socket}
  end
end
