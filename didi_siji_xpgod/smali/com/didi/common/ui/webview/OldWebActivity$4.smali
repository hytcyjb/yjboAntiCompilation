.class Lcom/didi/common/ui/webview/OldWebActivity$4;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldWebActivity;->setTitleBarRightCloseTxt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/OldWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$4;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$4;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    .line 323
    return-void
.end method
