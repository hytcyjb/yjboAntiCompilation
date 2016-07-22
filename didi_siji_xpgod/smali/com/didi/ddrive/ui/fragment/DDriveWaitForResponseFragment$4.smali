.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$4;
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
    .line 265
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 268
    const-string v0, "pgxwfr03_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 269
    return-void
.end method
