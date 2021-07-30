defmodule Leeyongkyu.SermonsTest do
  use Leeyongkyu.DataCase

  alias Leeyongkyu.Sermons

  describe "sermosn" do
    alias Leeyongkyu.Sermons.Sermon

    @valid_attrs %{book_number: 42, book_url: "some book_url", chapter: 42, page: 42, scripturre: "some scripturre", title: "some title", verse: "some verse"}
    @update_attrs %{book_number: 43, book_url: "some updated book_url", chapter: 43, page: 43, scripturre: "some updated scripturre", title: "some updated title", verse: "some updated verse"}
    @invalid_attrs %{book_number: nil, book_url: nil, chapter: nil, page: nil, scripturre: nil, title: nil, verse: nil}

    def sermon_fixture(attrs \\ %{}) do
      {:ok, sermon} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Sermons.create_sermon()

      sermon
    end

    test "list_sermosn/0 returns all sermosn" do
      sermon = sermon_fixture()
      assert Sermons.list_sermosn() == [sermon]
    end

    test "get_sermon!/1 returns the sermon with given id" do
      sermon = sermon_fixture()
      assert Sermons.get_sermon!(sermon.id) == sermon
    end

    test "create_sermon/1 with valid data creates a sermon" do
      assert {:ok, %Sermon{} = sermon} = Sermons.create_sermon(@valid_attrs)
      assert sermon.book_number == 42
      assert sermon.book_url == "some book_url"
      assert sermon.chapter == 42
      assert sermon.page == 42
      assert sermon.scripturre == "some scripturre"
      assert sermon.title == "some title"
      assert sermon.verse == "some verse"
    end

    test "create_sermon/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Sermons.create_sermon(@invalid_attrs)
    end

    test "update_sermon/2 with valid data updates the sermon" do
      sermon = sermon_fixture()
      assert {:ok, %Sermon{} = sermon} = Sermons.update_sermon(sermon, @update_attrs)
      assert sermon.book_number == 43
      assert sermon.book_url == "some updated book_url"
      assert sermon.chapter == 43
      assert sermon.page == 43
      assert sermon.scripturre == "some updated scripturre"
      assert sermon.title == "some updated title"
      assert sermon.verse == "some updated verse"
    end

    test "update_sermon/2 with invalid data returns error changeset" do
      sermon = sermon_fixture()
      assert {:error, %Ecto.Changeset{}} = Sermons.update_sermon(sermon, @invalid_attrs)
      assert sermon == Sermons.get_sermon!(sermon.id)
    end

    test "delete_sermon/1 deletes the sermon" do
      sermon = sermon_fixture()
      assert {:ok, %Sermon{}} = Sermons.delete_sermon(sermon)
      assert_raise Ecto.NoResultsError, fn -> Sermons.get_sermon!(sermon.id) end
    end

    test "change_sermon/1 returns a sermon changeset" do
      sermon = sermon_fixture()
      assert %Ecto.Changeset{} = Sermons.change_sermon(sermon)
    end
  end
end
