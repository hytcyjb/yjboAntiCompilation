.class Landroid/databinding/m$f;
.super Landroid/databinding/j$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/j$a;",
        "Landroid/databinding/m$c",
        "<",
        "Landroid/databinding/j;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/databinding/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/m$e",
            "<",
            "Landroid/databinding/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/m;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1218
    invoke-direct {p0}, Landroid/databinding/j$a;-><init>()V

    .line 1219
    new-instance v0, Landroid/databinding/m$e;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/m$e;-><init>(Landroid/databinding/m;ILandroid/databinding/m$c;)V

    iput-object v0, p0, Landroid/databinding/m$f;->a:Landroid/databinding/m$e;

    .line 1220
    return-void
.end method


# virtual methods
.method public a()Landroid/databinding/m$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/m$e",
            "<",
            "Landroid/databinding/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1224
    iget-object v0, p0, Landroid/databinding/m$f;->a:Landroid/databinding/m$e;

    return-object v0
.end method

.method public a(Landroid/databinding/j;)V
    .locals 0
    .parameter

    .prologue
    .line 1229
    invoke-interface {p1, p0}, Landroid/databinding/j;->a(Landroid/databinding/j$a;)V

    .line 1230
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1214
    check-cast p1, Landroid/databinding/j;

    invoke-virtual {p0, p1}, Landroid/databinding/m$f;->a(Landroid/databinding/j;)V

    return-void
.end method

.method public b(Landroid/databinding/j;)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    invoke-interface {p1, p0}, Landroid/databinding/j;->b(Landroid/databinding/j$a;)V

    .line 1235
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1214
    check-cast p1, Landroid/databinding/j;

    invoke-virtual {p0, p1}, Landroid/databinding/m$f;->b(Landroid/databinding/j;)V

    return-void
.end method
