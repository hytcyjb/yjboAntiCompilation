.class public final Lcom/tencent/bugly/proguard/Q;
.super Lcom/tencent/bugly/proguard/j;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/Q;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/Q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/Q;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/Q;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/Q;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/Q;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
