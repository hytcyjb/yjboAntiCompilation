.class final Lcom/tencent/tencentmap/mapsdk/maps/a/b$4;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/b;->a([Ljava/util/Comparator;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/util/Comparator;


# direct methods
.method constructor <init>([Ljava/util/Comparator;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$4;->a:[Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, t1:Ljava/lang/Object;,"TT;"
    .local p2, t2:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$4;->a:[Ljava/util/Comparator;

    .local v0, arr$:[Ljava/util/Comparator;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 87
    invoke-interface {v4, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 88
    .local v3, value:I
    if-eqz v3, :cond_0

    .line 91
    .end local v3           #value:I
    :goto_1
    return v3

    .line 86
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v3           #value:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
