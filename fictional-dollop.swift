    private func onLongTap(_ point: CGPoint,
                           in state: AppState) -> AppState {
        
        guard let pointID = PointsRecognizer.findPoint(
            point,
            in: state.collage
        )?.id else {
            return state
        }
        newCollage.stickers[stickerIndex] = stickerReducer.reduce(
            newCollage.stickers[stickerIndex],
            action
        )
