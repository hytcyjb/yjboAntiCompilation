.class Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;
.super Ljava/lang/Object;
.source "MessageWriter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/MessageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumValueOptionInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "name"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->type:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->name:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    check-cast p1, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;->compareTo(Lcom/squareup/wire/MessageWriter$EnumValueOptionInfo;)I

    move-result v0

    return v0
.end method
