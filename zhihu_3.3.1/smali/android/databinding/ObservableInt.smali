.class public Landroid/databinding/ObservableInt;
.super Landroid/databinding/a;
.source "ObservableInt.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/databinding/ObservableInt;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/databinding/ObservableInt$1;

    invoke-direct {v0}, Landroid/databinding/ObservableInt$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableInt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 48
    iput p1, p0, Landroid/databinding/ObservableInt;->mValue:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    return v0
.end method

.method public set(I)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    if-eq p1, v0, :cond_0

    .line 69
    iput p1, p0, Landroid/databinding/ObservableInt;->mValue:I

    .line 70
    invoke-virtual {p0}, Landroid/databinding/ObservableInt;->notifyChange()V

    .line 72
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
