.class Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;
.super Ljava/lang/Object;
.source "DDriveCancelTripActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 134
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 135
    const-string v0, "pdjxcancletrip_00_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->onBackPressed()V

    .line 145
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 138
    const-string v0, "pdjxcancletrip_01_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 141
    const-string v0, "pdjxcancletrip_02_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
