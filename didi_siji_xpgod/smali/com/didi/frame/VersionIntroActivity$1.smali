.class Lcom/didi/frame/VersionIntroActivity$1;
.super Ljava/lang/Object;
.source "VersionIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/VersionIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/VersionIntroActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/VersionIntroActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/didi/frame/VersionIntroActivity$1;->this$0:Lcom/didi/frame/VersionIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/frame/VersionIntroActivity$1;->this$0:Lcom/didi/frame/VersionIntroActivity;

    const-class v2, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from_intro"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const-string v1, "enter_temp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/didi/frame/VersionIntroActivity$1;->this$0:Lcom/didi/frame/VersionIntroActivity;

    invoke-virtual {v1, v0}, Lcom/didi/frame/VersionIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    iget-object v1, p0, Lcom/didi/frame/VersionIntroActivity$1;->this$0:Lcom/didi/frame/VersionIntroActivity;

    invoke-virtual {v1}, Lcom/didi/frame/VersionIntroActivity;->finish()V

    .line 57
    return-void
.end method
