.class final Lcom/didi/taxi/helper/TaxiPushHelper$15;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->registerBusinessPaySuccessListener(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$15;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 1
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$15;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    invoke-static {v0, p3}, Lcom/didi/taxi/helper/TaxiPushHelper;->onBusinessPaySucceed(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;[B)V

    .line 692
    return-void
.end method
