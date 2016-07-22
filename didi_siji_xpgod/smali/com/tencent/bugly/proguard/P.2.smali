.class public final Lcom/tencent/bugly/proguard/P;
.super Lcom/tencent/bugly/proguard/j;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static f:[B


# instance fields
.field public a:B

.field public b:I

.field public c:[B

.field public d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/P;->a:B

    iput v0, p0, Lcom/tencent/bugly/proguard/P;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/P;->c:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/P;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/P;->e:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/tencent/bugly/proguard/P;->a:B

    invoke-virtual {p1, v0, v3, v1}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/P;->a:B

    iget v0, p0, Lcom/tencent/bugly/proguard/P;->b:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/P;->b:I

    sget-object v0, Lcom/tencent/bugly/proguard/P;->f:[B

    if-nez v0, :cond_0

    new-array v0, v1, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/bugly/proguard/P;->f:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/P;->f:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->c(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/P;->c:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/P;->d:Ljava/lang/String;

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/P;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/P;->e:J

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 3

    iget-byte v0, p0, Lcom/tencent/bugly/proguard/P;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(BI)V

    iget v0, p0, Lcom/tencent/bugly/proguard/P;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/P;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/P;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a([BI)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/P;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/P;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/P;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(JI)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
