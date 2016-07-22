.class Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity$1;
.super Ljava/lang/Object;
.source "DDriveEstimatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;

    #calls: Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->back()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveEstimatePriceActivity;)V

    .line 194
    return-void
.end method
