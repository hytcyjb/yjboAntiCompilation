.class public Landroid/databinding/ObservableChar;
.super Landroid/databinding/a;
.source "ObservableChar.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/databinding/ObservableChar;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/databinding/ObservableChar$1;

    invoke-direct {v0}, Landroid/databinding/ObservableChar$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableChar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 47
    iput-char p1, p0, Landroid/databinding/ObservableChar;->mValue:C

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public get()C
    .locals 1

    .prologue
    .line 60
    iget-char v0, p0, Landroid/databinding/ObservableChar;->mValue:C

    return v0
.end method

.method public set(C)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-char v0, p0, Landroid/databinding/ObservableChar;->mValue:C

    if-eq p1, v0, :cond_0

    .line 68
    iput-char p1, p0, Landroid/databinding/ObservableChar;->mValue:C

    .line 69
    invoke-virtual {p0}, Landroid/databinding/ObservableChar;->notifyChange()V

    .line 71
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-char v0, p0, Landroid/databinding/ObservableChar;->mValue:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
