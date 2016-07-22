.class final Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;
.super Lcom/squareup/wire/UnknownFieldMap$FieldValue;
.source "UnknownFieldMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/UnknownFieldMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fixed64FieldValue"
.end annotation


# instance fields
.field private final value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 137
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/wire/WireType;)V

    .line 138
    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    .line 139
    return-void
.end method


# virtual methods
.method public getAsLong()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x8

    return v0
.end method

.method public write(ILcom/squareup/wire/WireOutput;)V
    .locals 2
    .parameter "tag"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 147
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    .line 148
    return-void
.end method
