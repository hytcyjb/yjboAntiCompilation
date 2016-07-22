.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$1;
.super Ljava/lang/Object;
.source "TaxiEndOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 98
    const-string v0, "unoncar_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->back()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$000(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    .line 100
    return-void
.end method
