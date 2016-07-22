.class Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;
.super Ljava/lang/Object;
.source "FollowList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/FollowList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FollowListItem"
.end annotation


# instance fields
.field public aivIcon:Lm/framework/ui/widget/asyncview/AsyncImageView;

.field public ivCheck:Landroid/widget/ImageView;

.field public tvName:Landroid/widget/TextView;

.field public tvSign:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/onekeyshare/FollowList$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 439
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;-><init>()V

    return-void
.end method
