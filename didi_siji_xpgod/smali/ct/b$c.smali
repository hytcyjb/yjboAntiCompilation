.class final Lct/b$c;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lct/be;

.field private b:Lct/ca;


# direct methods
.method public constructor <init>(Lct/be;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lct/b$c;->a:Lct/be;

    .line 316
    return-void
.end method


# virtual methods
.method public final a(Lct/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lct/b$c;->b:Lct/ca;

    .line 320
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lct/b$c;->a:Lct/be;

    .line 325
    iget-object v1, p0, Lct/b$c;->b:Lct/ca;

    .line 326
    if-eqz v1, :cond_0

    .line 327
    invoke-static {v0}, Lct/cl;->b(Lct/be;)Ljava/util/List;

    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Lct/ca;->a(Ljava/util/List;)V

    .line 329
    invoke-virtual {v0, v1}, Lct/be;->c(Ljava/lang/Object;)V

    .line 331
    :cond_0
    return-void
.end method
