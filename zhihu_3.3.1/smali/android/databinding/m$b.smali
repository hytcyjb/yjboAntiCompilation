.class public Landroid/databinding/m$b;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public final a:[[Ljava/lang/String;

.field public final b:[[I

.field public final c:[[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    new-array v0, p1, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/databinding/m$b;->a:[[Ljava/lang/String;

    .line 1264
    new-array v0, p1, [[I

    iput-object v0, p0, Landroid/databinding/m$b;->b:[[I

    .line 1265
    new-array v0, p1, [[I

    iput-object v0, p0, Landroid/databinding/m$b;->c:[[I

    .line 1266
    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I[I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1269
    iget-object v0, p0, Landroid/databinding/m$b;->a:[[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 1270
    iget-object v0, p0, Landroid/databinding/m$b;->b:[[I

    aput-object p3, v0, p1

    .line 1271
    iget-object v0, p0, Landroid/databinding/m$b;->c:[[I

    aput-object p4, v0, p1

    .line 1272
    return-void
.end method
