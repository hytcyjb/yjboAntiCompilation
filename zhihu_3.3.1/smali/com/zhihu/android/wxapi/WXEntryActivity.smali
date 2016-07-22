.class public Lcom/zhihu/android/wxapi/WXEntryActivity;
.super Lcom/zhihu/android/social/c;
.source "WXEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zhihu/android/social/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/tencent/mm/sdk/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/zhihu/android/wxapi/WXEntryActivity;->finish()V

    .line 28
    return-void
.end method

.method public b(Lcom/tencent/mm/sdk/d/b;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/d/b;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 33
    iget v0, p1, Lcom/tencent/mm/sdk/d/b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/wxapi/WXEntryActivity;->finish()V

    .line 41
    return-void

    .line 35
    :pswitch_0
    const v0, 0x7f0903d1

    invoke-static {p0, v0}, Lcom/zhihu/android/app/util/at;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/zhihu/android/social/c;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/wxapi/WXEntryActivity;->requestWindowFeature(I)Z

    .line 23
    return-void
.end method
