.class Landroid/databinding/m$e;
.super Ljava/lang/ref/WeakReference;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/databinding/m;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:I

.field private final b:Landroid/databinding/m$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/m$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/m;ILandroid/databinding/m$c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/m;",
            "I",
            "Landroid/databinding/m$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1084
    iput p2, p0, Landroid/databinding/m$e;->a:I

    .line 1085
    iput-object p3, p0, Landroid/databinding/m$e;->b:Landroid/databinding/m$c;

    .line 1086
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1089
    invoke-virtual {p0}, Landroid/databinding/m$e;->a()Z

    .line 1090
    iput-object p1, p0, Landroid/databinding/m$e;->c:Ljava/lang/Object;

    .line 1091
    iget-object v0, p0, Landroid/databinding/m$e;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Landroid/databinding/m$e;->b:Landroid/databinding/m$c;

    iget-object v1, p0, Landroid/databinding/m$e;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/databinding/m$c;->a(Ljava/lang/Object;)V

    .line 1094
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 1097
    const/4 v0, 0x0

    .line 1098
    iget-object v1, p0, Landroid/databinding/m$e;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1099
    iget-object v0, p0, Landroid/databinding/m$e;->b:Landroid/databinding/m$c;

    iget-object v1, p0, Landroid/databinding/m$e;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/databinding/m$c;->b(Ljava/lang/Object;)V

    .line 1100
    const/4 v0, 0x1

    .line 1102
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/databinding/m$e;->c:Ljava/lang/Object;

    .line 1103
    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/databinding/m$e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method protected c()Landroid/databinding/m;
    .locals 1

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/databinding/m$e;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/m;

    .line 1112
    if-nez v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Landroid/databinding/m$e;->a()Z

    .line 1115
    :cond_0
    return-object v0
.end method
