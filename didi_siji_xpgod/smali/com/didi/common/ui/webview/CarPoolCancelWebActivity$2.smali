.class Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$2;
.super Ljava/lang/Object;
.source "CarPoolCancelWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$2;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$2;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    #calls: Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->redictTaxiRealtimeFragment()V
    invoke-static {v0}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->access$100(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V

    .line 83
    return-void
.end method
