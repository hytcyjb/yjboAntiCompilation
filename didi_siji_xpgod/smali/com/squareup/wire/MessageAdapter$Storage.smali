.class Lcom/squareup/wire/MessageAdapter$Storage;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Storage"
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/MessageAdapter$ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/wire/MessageAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/squareup/wire/MessageAdapter$Storage;-><init>()V

    return-void
.end method


# virtual methods
.method add(ILjava/lang/Object;)V
    .locals 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 710
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 711
    .local v0, list:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<Ljava/lang/Object;>;"
    :goto_0
    if-nez v0, :cond_1

    .line 712
    new-instance v0, Lcom/squareup/wire/MessageAdapter$ImmutableList;

    .end local v0           #list:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<Ljava/lang/Object;>;"
    invoke-direct {v0}, Lcom/squareup/wire/MessageAdapter$ImmutableList;-><init>()V

    .line 713
    .restart local v0       #list:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 714
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_1
    #getter for: Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/wire/MessageAdapter$ImmutableList;->access$400(Lcom/squareup/wire/MessageAdapter$ImmutableList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    return-void

    .line 710
    .end local v0           #list:Lcom/squareup/wire/MessageAdapter$ImmutableList;,"Lcom/squareup/wire/MessageAdapter$ImmutableList<Ljava/lang/Object;>;"
    :cond_2
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$ImmutableList;

    move-object v0, v1

    goto :goto_0
.end method

.method get(I)Ljava/util/List;
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$ImmutableList;

    goto :goto_0
.end method

.method getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$Storage;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method
