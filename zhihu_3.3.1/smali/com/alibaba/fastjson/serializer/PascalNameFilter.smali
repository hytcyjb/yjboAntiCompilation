.class public Lcom/alibaba/fastjson/serializer/PascalNameFilter;
.super Ljava/lang/Object;
.source "PascalNameFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/NameFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 14
    :cond_0
    :goto_0
    return-object p2

    .line 10
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 11
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 13
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
