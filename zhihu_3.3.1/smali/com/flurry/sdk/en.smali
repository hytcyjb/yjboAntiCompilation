.class public final Lcom/flurry/sdk/en;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p1, p2}, Lcom/flurry/sdk/en;->a(Ljava/lang/String;I)Lcom/flurry/sdk/eq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ep;-><init>(Lcom/flurry/sdk/eq;)V

    .line 23
    iput p2, p0, Lcom/flurry/sdk/en;->a:I

    .line 24
    return-void
.end method

.method private static a(Ljava/lang/String;I)Lcom/flurry/sdk/eq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p0}, Lcom/flurry/sdk/eo;->a(Ljava/lang/String;)Lcom/flurry/sdk/eq;

    move-result-object v0

    .line 36
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
