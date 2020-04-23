module ArtistsHelper
    
    def display_artist(song)
        if song.artist
            link_to song.artist_name, artist_path(song.artist)
        else
            link_to "Add Artist", edit_song_path(song)
        end
    end
end


# displays a link to edit the song if artist empty (FAILED - 4)
# displays a link to the artist page if artist not empty (FAILED - 5)
