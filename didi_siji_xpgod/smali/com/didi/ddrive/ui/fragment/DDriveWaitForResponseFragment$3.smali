.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$3;
.super Ljava/lang/Object;
.source "DDriveWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->setBarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 261
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$200(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;Z)V

    .line 262
    const-string v0, "pgxwfr02_ck"

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$3;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 263
    return-void
.end method
