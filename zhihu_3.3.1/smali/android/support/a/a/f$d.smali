.class Landroid/support/a/a/f$d;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field protected m:[Landroid/support/a/a/c$b;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/f$d;->m:[Landroid/support/a/a/c$b;

    .line 1361
    return-void
.end method

.method public constructor <init>(Landroid/support/a/a/f$d;)V
    .locals 1
    .parameter

    .prologue
    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/f$d;->m:[Landroid/support/a/a/c$b;

    .line 1386
    iget-object v0, p1, Landroid/support/a/a/f$d;->n:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/a/a/f$d;->n:Ljava/lang/String;

    .line 1387
    iget v0, p1, Landroid/support/a/a/f$d;->o:I

    iput v0, p0, Landroid/support/a/a/f$d;->o:I

    .line 1388
    iget-object v0, p1, Landroid/support/a/a/f$d;->m:[Landroid/support/a/a/c$b;

    invoke-static {v0}, Landroid/support/a/a/c;->a([Landroid/support/a/a/c$b;)[Landroid/support/a/a/c$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/f$d;->m:[Landroid/support/a/a/c$b;

    .line 1389
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1
    .parameter

    .prologue
    .line 1392
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1393
    iget-object v0, p0, Landroid/support/a/a/f$d;->m:[Landroid/support/a/a/c$b;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Landroid/support/a/a/f$d;->m:[Landroid/support/a/a/c$b;

    invoke-static {v0, p1}, Landroid/support/a/a/c$b;->a([Landroid/support/a/a/c$b;Landroid/graphics/Path;)V

    .line 1396
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1410
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/support/a/a/f$d;->n:Ljava/lang/String;

    return-object v0
.end method
