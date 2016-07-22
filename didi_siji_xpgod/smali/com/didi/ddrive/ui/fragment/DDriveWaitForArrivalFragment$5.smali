.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$5;
.super Lcom/didi/ddrive/ui/component/DialogListener;
.source "DDriveWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submit()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->doShare()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$500(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    .line 672
    return-void
.end method
