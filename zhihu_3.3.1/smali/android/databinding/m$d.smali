.class Landroid/databinding/m$d;
.super Landroid/databinding/i$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/i$a;",
        "Landroid/databinding/m$c",
        "<",
        "Landroid/databinding/i;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/databinding/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/m$e",
            "<",
            "Landroid/databinding/i;",
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
    .line 1160
    invoke-direct {p0}, Landroid/databinding/i$a;-><init>()V

    .line 1161
    new-instance v0, Landroid/databinding/m$e;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/m$e;-><init>(Landroid/databinding/m;ILandroid/databinding/m$c;)V

    iput-object v0, p0, Landroid/databinding/m$d;->a:Landroid/databinding/m$e;

    .line 1162
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
            "Landroid/databinding/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/databinding/m$d;->a:Landroid/databinding/m$e;

    return-object v0
.end method

.method public a(Landroid/databinding/i;)V
    .locals 4
    .parameter

    .prologue
    .line 1181
    iget-object v0, p0, Landroid/databinding/m$d;->a:Landroid/databinding/m$e;

    invoke-virtual {v0}, Landroid/databinding/m$e;->c()Landroid/databinding/m;

    move-result-object v1

    .line 1182
    if-nez v1, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Landroid/databinding/m$d;->a:Landroid/databinding/m$e;

    invoke-virtual {v0}, Landroid/databinding/m$e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/i;

    .line 1186
    if-ne v0, p1, :cond_0

    .line 1189
    iget-object v2, p0, Landroid/databinding/m$d;->a:Landroid/databinding/m$e;

    iget v2, v2, Landroid/databinding/m$e;->a:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/databinding/m;->a(Landroid/databinding/m;ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public a(Landroid/databinding/i;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1194
    invoke-virtual {p0, p1}, Landroid/databinding/m$d;->a(Landroid/databinding/i;)V

    .line 1195
    return-void
.end method

.method public a(Landroid/databinding/i;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1205
    invoke-virtual {p0, p1}, Landroid/databinding/m$d;->a(Landroid/databinding/i;)V

    .line 1206
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1156
    check-cast p1, Landroid/databinding/i;

    invoke-virtual {p0, p1}, Landroid/databinding/m$d;->b(Landroid/databinding/i;)V

    return-void
.end method

.method public b(Landroid/databinding/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1171
    invoke-interface {p1, p0}, Landroid/databinding/i;->addOnListChangedCallback(Landroid/databinding/i$a;)V

    .line 1172
    return-void
.end method

.method public b(Landroid/databinding/i;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1199
    invoke-virtual {p0, p1}, Landroid/databinding/m$d;->a(Landroid/databinding/i;)V

    .line 1200
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1156
    check-cast p1, Landroid/databinding/i;

    invoke-virtual {p0, p1}, Landroid/databinding/m$d;->c(Landroid/databinding/i;)V

    return-void
.end method

.method public c(Landroid/databinding/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1176
    invoke-interface {p1, p0}, Landroid/databinding/i;->removeOnListChangedCallback(Landroid/databinding/i$a;)V

    .line 1177
    return-void
.end method

.method public c(Landroid/databinding/i;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1210
    invoke-virtual {p0, p1}, Landroid/databinding/m$d;->a(Landroid/databinding/i;)V

    .line 1211
    return-void
.end method
