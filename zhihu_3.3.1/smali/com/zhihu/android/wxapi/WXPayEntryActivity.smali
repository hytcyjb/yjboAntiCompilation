.class public Lcom/zhihu/android/wxapi/WXPayEntryActivity;
.super Lcom/zhihu/android/social/d;
.source "WXPayEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zhihu/android/social/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/tencent/mm/sdk/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    return-void
.end method

.method public b(Lcom/tencent/mm/sdk/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p1, Lcom/tencent/mm/sdk/d/b;->a:I

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/zhihu/android/social/d;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/wxapi/WXPayEntryActivity;->requestWindowFeature(I)Z

    .line 19
    return-void
.end method
