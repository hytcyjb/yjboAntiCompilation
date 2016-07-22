.class public final Lcom/tencent/bugly/crashreport/common/strategy/c$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/common/strategy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private synthetic c:Lcom/tencent/bugly/crashreport/common/strategy/c;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    .line 811
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->b:J

    .line 812
    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/c;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    .line 817
    iput-wide p3, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->b:J

    .line 818
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 825
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 843
    const-string v0, "unknown tasktype :%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 828
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 849
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 832
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->i()V

    goto :goto_0

    .line 835
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    iget-wide v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(J)V

    goto :goto_0

    .line 838
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->j()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
