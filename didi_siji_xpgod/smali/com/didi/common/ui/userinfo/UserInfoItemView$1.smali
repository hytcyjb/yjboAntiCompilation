.class Lcom/didi/common/ui/userinfo/UserInfoItemView$1;
.super Ljava/lang/Object;
.source "UserInfoItemView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/UserInfoItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoItemView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView$1;->this$0:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoItemView$1;->this$0:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
