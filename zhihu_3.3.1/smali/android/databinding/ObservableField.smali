.class public Landroid/databinding/ObservableField;
.super Landroid/databinding/a;
.source "ObservableField.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/databinding/a;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 65
    iput-object p1, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Landroid/databinding/ObservableField;->notifyChange()V

    .line 68
    :cond_0
    return-void
.end method
