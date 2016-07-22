.class public Lcom/didi/car/ui/component/PhoneSpan;
.super Landroid/text/style/ClickableSpan;
.source "PhoneSpan.java"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "tel:%s"


# instance fields
.field private flipperView:Lcom/didi/common/ui/component/FlipperView;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/didi/common/ui/component/FlipperView;)V
    .locals 0
    .parameter "phone"
    .parameter "flipperView"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/didi/car/ui/component/PhoneSpan;->phone:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/didi/car/ui/component/PhoneSpan;->flipperView:Lcom/didi/common/ui/component/FlipperView;

    .line 26
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "widget"

    .prologue
    const/4 v7, 0x0

    .line 37
    iget-object v4, p0, Lcom/didi/car/ui/component/PhoneSpan;->flipperView:Lcom/didi/common/ui/component/FlipperView;

    if-nez v4, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v4, p0, Lcom/didi/car/ui/component/PhoneSpan;->flipperView:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v4}, Lcom/didi/common/ui/component/FlipperView;->getCurrentViewIndex()I

    move-result v1

    .line 43
    .local v1, index:I
    const v4, 0x7f080259

    if-ne v1, v4, :cond_0

    .line 47
    const-string v4, "tel:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/didi/car/ui/component/PhoneSpan;->phone:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 48
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wanliu_message_phone_click"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 32
    return-void
.end method
