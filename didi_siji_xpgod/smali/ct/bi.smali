.class public final Lct/bi;
.super Lct/bj;
.source "TL"

# interfaces
.implements Lct/bh;
.implements Lct/bt;
.implements Lct/bw;


# static fields
.field public static final a:Lct/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lct/bi;

    invoke-direct {v0}, Lct/bi;-><init>()V

    sput-object v0, Lct/bi;->a:Lct/bi;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "dummy"

    const-string v1, "dummy"

    invoke-direct {p0, v0, v1}, Lct/bj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static b()Lct/bh;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lct/bg;

    invoke-direct {v0}, Lct/bg;-><init>()V

    return-object v0
.end method

.method public static c()Lct/bt;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lct/bi;->a:Lct/bi;

    .line 37
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    return-object p1
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 65
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public final a(ZLct/cb;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lct/bn;->b:Landroid/location/Location;

    return-object v0
.end method
