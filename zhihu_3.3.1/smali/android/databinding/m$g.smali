.class Landroid/databinding/m$g;
.super Landroid/databinding/h$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/h$a;",
        "Landroid/databinding/m$c",
        "<",
        "Landroid/databinding/h;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/databinding/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/m$e",
            "<",
            "Landroid/databinding/h;",
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
    .line 1123
    invoke-direct {p0}, Landroid/databinding/h$a;-><init>()V

    .line 1124
    new-instance v0, Landroid/databinding/m$e;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/m$e;-><init>(Landroid/databinding/m;ILandroid/databinding/m$c;)V

    iput-object v0, p0, Landroid/databinding/m$g;->a:Landroid/databinding/m$e;

    .line 1125
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
            "Landroid/databinding/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/databinding/m$g;->a:Landroid/databinding/m$e;

    return-object v0
.end method

.method public a(Landroid/databinding/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1134
    invoke-interface {p1, p0}, Landroid/databinding/h;->addOnPropertyChangedCallback(Landroid/databinding/h$a;)V

    .line 1135
    return-void
.end method

.method public a(Landroid/databinding/h;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/databinding/m$g;->a:Landroid/databinding/m$e;

    invoke-virtual {v0}, Landroid/databinding/m$e;->c()Landroid/databinding/m;

    move-result-object v1

    .line 1145
    if-nez v1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iget-object v0, p0, Landroid/databinding/m$g;->a:Landroid/databinding/m$e;

    invoke-virtual {v0}, Landroid/databinding/m$e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/h;

    .line 1149
    if-ne v0, p1, :cond_0

    .line 1152
    iget-object v0, p0, Landroid/databinding/m$g;->a:Landroid/databinding/m$e;

    iget v0, v0, Landroid/databinding/m$e;->a:I

    invoke-static {v1, v0, p1, p2}, Landroid/databinding/m;->a(Landroid/databinding/m;ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1119
    check-cast p1, Landroid/databinding/h;

    invoke-virtual {p0, p1}, Landroid/databinding/m$g;->a(Landroid/databinding/h;)V

    return-void
.end method

.method public b(Landroid/databinding/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1139
    invoke-interface {p1, p0}, Landroid/databinding/h;->removeOnPropertyChangedCallback(Landroid/databinding/h$a;)V

    .line 1140
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1119
    check-cast p1, Landroid/databinding/h;

    invoke-virtual {p0, p1}, Landroid/databinding/m$g;->b(Landroid/databinding/h;)V

    return-void
.end method
