.class final Lct/by$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lct/by;-><init>(Lct/be;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lct/by;


# direct methods
.method constructor <init>(Lct/by;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lct/by$1;->a:Lct/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lct/by$1;->a:Lct/by;

    invoke-static {v0}, Lct/by;->a(Lct/by;)Z

    .line 97
    iget-object v0, p0, Lct/by$1;->a:Lct/by;

    iget-object v1, p0, Lct/by$1;->a:Lct/by;

    invoke-static {v1}, Lct/by;->b(Lct/by;)Lct/be;

    move-result-object v1

    invoke-virtual {v1}, Lct/be;->h()Lct/bf;

    move-result-object v1

    iget-wide v1, v1, Lct/bf;->k:J

    invoke-static {v0, v1, v2}, Lct/by;->a(Lct/by;J)V

    .line 98
    return-void
.end method
