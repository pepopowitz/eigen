import { color, Flex } from "@artsy/palette"
import React from "react"
import { View } from "react-native"
import { create } from "react-test-renderer"
import { ColorSwatch } from "../ColorSwatch"

describe("Color swatch", () => {
  it("adds a border when selected", () => {
    const selectedTree = create(<ColorSwatch size={30} colorOption="darkblue" selected={true} />)
    const selectedFlex = selectedTree.root.findByType(Flex)
    expect(selectedFlex.props.style).toMatchObject({ borderColor: color("black100"), borderWidth: 1 })

    const unselectedTree = create(<ColorSwatch size={30} colorOption="darkblue" selected={false} />)
    const unselectedFlex = unselectedTree.root.findByType(Flex)
    expect(unselectedFlex.props.style).toMatchObject({ borderColor: color("black10"), borderWidth: 1 })
  })

  it("has correct background color for passed in color", () => {
    const darkblue = create(<ColorSwatch size={30} colorOption="darkblue" selected={true} />)
    const darkBlueView = darkblue.root.findAllByType(View)[1]
    expect(darkBlueView.props.style.backgroundColor).toMatch("#435EA9")

    const blackAndWhite = create(<ColorSwatch size={30} colorOption="black-and-white" selected={false} />)
    const blackAndWhiteView = blackAndWhite.root.findAllByType(View)[1]
    expect(blackAndWhiteView.props.style.backgroundColor).toMatch("#595A5B")

    const orange = create(<ColorSwatch size={30} colorOption="darkorange" selected={false} />)
    const orangeView = orange.root.findAllByType(View)[1]
    expect(orangeView.props.style.backgroundColor).toMatch("#F1572C")
  })
})
