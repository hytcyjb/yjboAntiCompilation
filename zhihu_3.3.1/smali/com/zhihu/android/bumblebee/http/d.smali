.class public Lcom/zhihu/android/bumblebee/http/d;
.super Ljava/lang/Object;
.source "BumblebeeRetryPolicy.java"

# interfaces
.implements Lcom/octo/android/robospice/c/b;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;


# direct methods
.method public constructor <init>(IILcom/zhihu/android/bumblebee/util/RetryPolicyRule;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    .line 40
    iput p2, p0, Lcom/zhihu/android/bumblebee/http/d;->b:I

    .line 42
    iput-object p3, p0, Lcom/zhihu/android/bumblebee/http/d;->c:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    .line 43
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    return v0
.end method

.method public a(Lcom/octo/android/robospice/persistence/exception/SpiceException;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-static {p1}, Lcom/zhihu/android/bumblebee/exception/a;->a(Lcom/octo/android/robospice/persistence/exception/SpiceException;)Lcom/zhihu/android/bumblebee/exception/BumblebeeException;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_0

    .line 58
    iget v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    .line 81
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v1, Lcom/zhihu/android/bumblebee/http/d$1;->a:[I

    iget-object v2, p0, Lcom/zhihu/android/bumblebee/http/d;->c:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    .line 71
    iget v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhihu/android/bumblebee/http/d;->a:I

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()J
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/zhihu/android/bumblebee/http/d;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
