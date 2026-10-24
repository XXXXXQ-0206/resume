#import "fontawesome.typ": *

#let chiline() = {
    v(-8pt);
    line(length: 100%, stroke: (paint: gray, thickness: 0.6pt));
    v(-8pt)
}

#let iconlink(
    uri, label: "", icon: link-icon
) = {
    if label != "" {
        link(uri)[#text[#fa[#icon]] #label]
    } else {
        link(uri)[#text[#fa[#icon]]]
    }
}

#let ghrepo(
    user_repo, add_link: true, icon: true
) = {
    if add_link {
        let (user, repo) = user_repo.split("/");
        let label = [#text(fill: rgb(70, 70, 70))[#user]/#text(weight: "semibold")[#repo]];
        if icon {
            iconlink("https://github.com/" + user_repo, label: label, icon: github)
        } else {
            link("https://github.com/" + user_repo)[#label]
        }
    } else if icon {
        [#fa[#github] #user_repo]
    } else {
        user_repo
    }
}

#let cventry(
    tl: "",
    tr: "",
    bl: "",
    br: "",
    compact: false,
    font: ("SimSun", "FangSong", "STFangsong"),
    content
) = {
    block(
        inset: (bottom: if compact { 0.05em } else { 0.2em }),
        text(
            weight: "bold",
            size: 1.16em,
            font: font,
        )[#tl] +
        h(1fr) + tr +
        if bl != "" or br != "" {
            linebreak() + bl + h(1fr) + br
        } +
        if compact {
            []
        } else {
            linebreak() + content
        }
    )
}

#let chicv(body) = {
    let heading-fonts = (
        "SimSun",
        "FangSong",
        "STFangsong",
    )
    let body-fonts = (
        "FangSong",
        "STFangsong",
        "SimSun",
    )
    show heading.where(
        level: 1
    ): set text(
        size: 28pt,
        font: heading-fonts,
        weight: "regular",
    )

    show heading.where(
        level: 2
    ): it => text(
        size: 12pt,
        font: heading-fonts,
        weight: "bold",
        block(
            v(0.2em) + chiline() + v(0.14em) + it + v(0.2em),
        )
    )
    set list(marker: ([•], [‣]), spacing: 0.95em)

    set page(margin: (x: 0.6cm, top: 1cm, bottom: 0cm))
    set par(justify: true, leading: 0.86em)
    set text(font: body-fonts, size: 10pt)

    body
}
