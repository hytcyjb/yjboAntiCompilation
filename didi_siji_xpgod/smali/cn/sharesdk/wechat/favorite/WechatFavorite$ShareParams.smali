.class public Lcn/sharesdk/wechat/favorite/WechatFavorite$ShareParams;
.super Lcn/sharesdk/wechat/utils/WechatHelper$ShareParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/wechat/favorite/WechatFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatHelper$ShareParams;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/sharesdk/wechat/favorite/WechatFavorite$ShareParams;->scene:I

    return-void
.end method
