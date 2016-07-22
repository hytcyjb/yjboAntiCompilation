.class public Lcom/facebook/drawee/b/c;
.super Ljava/lang/Object;
.source "BaseControllerListener.java"

# interfaces
.implements Lcom/facebook/drawee/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/b/d",
        "<TINFO;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/drawee/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/b/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/drawee/b/c;

    invoke-direct {v0}, Lcom/facebook/drawee/b/c;-><init>()V

    sput-object v0, Lcom/facebook/drawee/b/c;->a:Lcom/facebook/drawee/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/drawee/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/drawee/b/d",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/drawee/b/c;->a:Lcom/facebook/drawee/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Landroid/graphics/drawable/Animatable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method
