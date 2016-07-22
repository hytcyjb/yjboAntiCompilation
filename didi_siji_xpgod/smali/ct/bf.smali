.class public final Lct/bf;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field public final a:Lct/be;

.field public b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:J

.field public l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lct/be;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lct/bf;->a:Lct/be;

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lct/bf;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "0123456789ABCDEF"

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lct/bf;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lct/bf;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "0123456789ABCDEF"

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lct/bf;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lct/bf;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "0123456789ABCDEF"

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lct/bf;->f:Ljava/lang/String;

    goto :goto_0
.end method
