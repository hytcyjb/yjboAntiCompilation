.class Lcn/sharesdk/onekeyshare/EditPage$1$1;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/EditPage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/sharesdk/onekeyshare/EditPage$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/EditPage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage$1$1;->this$1:Lcn/sharesdk/onekeyshare/EditPage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 147
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$1$1;->this$1:Lcn/sharesdk/onekeyshare/EditPage$1;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/EditPage;->afterPlatformListGot()V

    .line 148
    const/4 v0, 0x0

    return v0
.end method
