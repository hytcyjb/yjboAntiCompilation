.class Lcom/didi/common/ui/webview/OldWebActivity$7;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/OldWebActivity;
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
    .line 634
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$7;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$7;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #calls: Lcom/didi/common/ui/webview/OldWebActivity;->goBack()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$400(Lcom/didi/common/ui/webview/OldWebActivity;)V

    .line 639
    return-void
.end method
