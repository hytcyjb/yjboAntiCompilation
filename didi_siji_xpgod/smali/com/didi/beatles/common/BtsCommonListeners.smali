.class public Lcom/didi/beatles/common/BtsCommonListeners;
.super Ljava/lang/Object;
.source "BtsCommonListeners.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllListeners()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public static getCancelOrderListener(Landroid/app/Activity;Ljava/lang/String;IILandroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 6
    .parameter "activity"
    .parameter "oid"
    .parameter "requestCode"
    .parameter "role"
    .parameter "phoneIcon"

    .prologue
    .line 83
    new-instance v0, Lcom/didi/beatles/common/BtsCommonListeners$2;

    move v1, p3

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/beatles/common/BtsCommonListeners$2;-><init>(ILandroid/app/Activity;Ljava/lang/String;ILandroid/view/View;)V

    .line 149
    .local v0, listener:Landroid/view/View$OnClickListener;
    return-object v0
.end method

.method public static getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "context"
    .parameter "oid"
    .parameter "requestCode"
    .parameter "role"

    .prologue
    .line 46
    new-instance v0, Lcom/didi/beatles/common/BtsCommonListeners$1;

    invoke-direct {v0, p3, p0, p1}, Lcom/didi/beatles/common/BtsCommonListeners$1;-><init>(ILandroid/app/Activity;Ljava/lang/String;)V

    .line 59
    .local v0, listener:Landroid/view/View$OnClickListener;
    return-object v0
.end method

.method public static getPriceDetailListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View$OnClickListener;
    .locals 2
    .parameter "activity"
    .parameter "detailUrl"
    .parameter "orderId"
    .parameter "requestCode"
    .parameter "role"

    .prologue
    .line 169
    invoke-static {p1, p2}, Lcom/didi/beatles/net/BtsRequest;->getPriceDetailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, url:Ljava/lang/String;
    new-instance v0, Lcom/didi/beatles/common/BtsCommonListeners$3;

    invoke-direct {v0, p4, p0, v1, p3}, Lcom/didi/beatles/common/BtsCommonListeners$3;-><init>(ILandroid/app/Activity;Ljava/lang/String;I)V

    .line 186
    .local v0, listener:Landroid/view/View$OnClickListener;
    return-object v0
.end method

.method public static getShareListener(Landroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;ZZ)Landroid/view/View$OnClickListener;
    .locals 7
    .parameter "activity"
    .parameter "parentView"
    .parameter "gravity"
    .parameter "shareInfo"
    .parameter "isPassenger"
    .parameter "isShare"

    .prologue
    .line 203
    if-nez p3, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v0, Lcom/didi/beatles/common/BtsCommonListeners$4;

    move v1, p4

    move v2, p5

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/didi/beatles/common/BtsCommonListeners$4;-><init>(ZZLandroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;)V

    .line 234
    .local v0, listener:Landroid/view/View$OnClickListener;
    goto :goto_0
.end method
