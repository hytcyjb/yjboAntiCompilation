.class public Lcom/didi/ddrive/payment/PayMethodFactory;
.super Ljava/lang/Object;
.source "PayMethodFactory.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/didi/ddrive/payment/PayMethodFactory;->mActivity:Landroid/app/Activity;

    .line 16
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/didi/ddrive/payment/PayMethodFactory;
    .locals 1
    .parameter "activity"

    .prologue
    .line 19
    new-instance v0, Lcom/didi/ddrive/payment/PayMethodFactory;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/payment/PayMethodFactory;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public getMethod(Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)Lcom/didi/ddrive/payment/PayMethod;
    .locals 2
    .parameter "item"

    .prologue
    .line 24
    iget v0, p1, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    packed-switch v0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    new-instance v0, Lcom/didi/ddrive/payment/AliPayMethod;

    iget-object v1, p0, Lcom/didi/ddrive/payment/PayMethodFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/didi/ddrive/payment/AliPayMethod;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 28
    :pswitch_1
    new-instance v0, Lcom/didi/ddrive/payment/WeiXinPayMethod;

    iget-object v1, p0, Lcom/didi/ddrive/payment/PayMethodFactory;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/didi/ddrive/payment/WeiXinPayMethod;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
