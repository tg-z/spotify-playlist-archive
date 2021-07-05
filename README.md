# spotify-playlist-archive [![](https://github.com/mackorone/spotify-playlist-archive/actions/workflows/main.yml/badge.svg)](https://github.com/mackorone/spotify-playlist-archive/actions/workflows/main.yml)

> Daily snapshots of public Spotify playlists

Spotify's playlists are great. I like that they're updated once in a while -
change is good! I don't like, however, that it's impossible to see older
versions. How am I supposed to remember the name of that song I really liked?
Apparently, I'm not alone: see
[here](https://community.spotify.com/t5/Content-Questions/View-previous-versions-of-playlists/td-p/4400750),
[here](https://community.spotify.com/t5/Accounts/A-playlist-was-modified-Can-I-get-the-old-songs-back/td-p/1001889),
[here](https://community.spotify.com/t5/Content-Questions/Seeing-an-old-version-of-a-playlist/td-p/1318739),
[here](https://community.spotify.com/t5/Other-Partners-Web-Player-etc/Playlists-Is-there-any-way-to-recover-previous-versions-of-a/td-p/4726831),
[here](https://community.spotify.com/t5/Desktop-Mac/Find-Songs-of-old-versions-of-Spotify-Playlists/td-p/998504),
[here](https://community.spotify.com/t5/Closed-Ideas/Playlist-Versioning-History/idi-p/1133819),
[here](https://community.spotify.com/t5/Closed-Ideas/Playlist-History-Versioning/idi-p/1346418),
[here](https://community.spotify.com/t5/Closed-Ideas/Playlists-Playlist-History/idi-p/1816799),
and [here](https://community.spotify.com/t5/Live-Ideas/Playlists-Edit-History/idi-p/4573743).
Since Spotify won't take snapshots of our favorite playlists, let's do it ourselves!

## Quick start

1. To view the current version of a playlist, click on its name [below](https://github.com/mackorone/spotify-playlist-archive#playlists)
1. To see all songs that ever belonged to a playlist, click "cumulative"
1. To determine which songs were added or removed from a playlist, click "githistory"
1. To add a playlist to the archive, simply `touch playlists/plain/<playlist_id>` and make a pull request

## How it works

This repository contains a script for scraping Spotify playlists and publishing
them back to the repo. The script is run daily via
[GitHub Actions](https://github.com/mackorone/spotify-playlist-archive/actions/workflows/main.yml).
It's also run after every commit, which means that playlists get regenerated
whenever the scraping or formatting logic changes, or when new playlists are
added - cool!

The script determines which playlists to scrape by looking at the file names in
`playlists/plain`. Files get regenerated as follows: a pretty version of each
playlist gets dumped in `playlists/pretty`, new tracks are added to the
files in `playlists/cumulative`, and a plaintext version of each playlist is
written back to `playlists/plain`. The plain version is sorted alphabetically,
rather than by track number, so that it only changes when tracks are added or
removed, making [Git History](https://githistory.xyz/) a nice way to visualize
how the playlist evolves over time.

## Playlists

- [10 Things I Hate About You - Soundtrack](/playlists/pretty/10%20Things%20I%20Hate%20About%20You%20-%20Soundtrack.md)
- [2010s Hits](/playlists/pretty/2010s%20Hits.md)
- [A - Aggregate](/playlists/pretty/A%20-%20Aggregate.md)
- [All Out 00s](/playlists/pretty/All%20Out%2000s.md)
- [All Out 10s](/playlists/pretty/All%20Out%2010s.md)
- [All Out 90s](/playlists/pretty/All%20Out%2090s.md)
- [best cix songs imo](/playlists/pretty/best%20cix%20songs%20imo.md)
- [big on the internet](/playlists/pretty/big%20on%20the%20internet.md)
- [Daily Mix 1](/playlists/pretty/Daily%20Mix%201.md)
- [Daily Mix 2](/playlists/pretty/Daily%20Mix%202.md)
- [Dazed and Confused(full soundtrack in order of movie)](/playlists/pretty/Dazed%20and%20Confused(full%20soundtrack%20in%20order%20of%20movie).md)
- [drain gang](/playlists/pretty/drain%20gang.md)
- [Empire Records (Original Motion Picture Soundtrack)](/playlists/pretty/Empire%20Records%20(Original%20Motion%20Picture%20Soundtrack).md)
- [enhypen likes](/playlists/pretty/enhypen%20likes.md)
- [hyperpop](/playlists/pretty/hyperpop.md)
- [itunes](/playlists/pretty/itunes.md)
- [K-Pop Rising](/playlists/pretty/K-Pop%20Rising.md)
- [kpop](/playlists/pretty/kpop.md)
- [lain](/playlists/pretty/lain.md)
- [lilya 4-ever](/playlists/pretty/lilya%204-ever.md)
- [Missed Hits](/playlists/pretty/Missed%20Hits.md)
- [Musica Favorita](/playlists/pretty/Musica%20Favorita.md)
- [My Shazam Tracks](/playlists/pretty/My%20Shazam%20Tracks.md)
- [On Record](/playlists/pretty/On%20Record.md)
- [Release Radar](/playlists/pretty/Release%20Radar.md)
- [Repeat Rewind](/playlists/pretty/Repeat%20Rewind.md)
- [shazam](/playlists/pretty/shazam.md)
- [SHE'S THE MAN (soundtrack)](/playlists/pretty/SHE'S%20THE%20MAN%20(soundtrack).md)
- [This Is Bladee](/playlists/pretty/This%20Is%20Bladee.md)
- [This Is ENHYPEN](/playlists/pretty/This%20Is%20ENHYPEN.md)
- [Today's Top Hits](/playlists/pretty/Today's%20Top%20Hits.md)
- [Top 50 - Global](/playlists/pretty/Top%2050%20-%20Global.md)
- [Top 50 - Japan](/playlists/pretty/Top%2050%20-%20Japan.md)
- [Top 50 - Mexico](/playlists/pretty/Top%2050%20-%20Mexico.md)
- [Top 50 - South Korea](/playlists/pretty/Top%2050%20-%20South%20Korea.md)
- [Top 50 - Sweden](/playlists/pretty/Top%2050%20-%20Sweden.md)
- [Top 50 - USA](/playlists/pretty/Top%2050%20-%20USA.md)
- [True Beauty OST](/playlists/pretty/True%20Beauty%20OST.md)
- [UNLEASHED](/playlists/pretty/UNLEASHED.md)
- [Unwind 00s](/playlists/pretty/Unwind%2000s.md)
- [Viral Hits](/playlists/pretty/Viral%20Hits.md)
- [wary](/playlists/pretty/wary.md)
- [Women of Pop](/playlists/pretty/Women%20of%20Pop.md)
- [Your Time Capsule](/playlists/pretty/Your%20Time%20Capsule.md)
- [Your Top Songs 2019](/playlists/pretty/Your%20Top%20Songs%202019.md)
- [Your Top Songs 2020](/playlists/pretty/Your%20Top%20Songs%202020.md)
- [🚨Emergency kpop🚨](/playlists/pretty/🚨Emergency%20kpop🚨.md)
