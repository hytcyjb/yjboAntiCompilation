.class public final Lcom/squareup/protoparser/MessageType$Field;
.super Ljava/lang/Object;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/protoparser/MessageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field private final documentation:Ljava/lang/String;

.field private final label:Lcom/squareup/protoparser/MessageType$Label;

.field private final name:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:I

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/protoparser/MessageType$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "label"
    .parameter "type"
    .parameter "name"
    .parameter "tag"
    .parameter "documentation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/MessageType$Label;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p6, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "label"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    invoke-static {p4}, Lcom/squareup/protoparser/ProtoFile;->isValidTag(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal tag value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "documentation"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "options"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    iput-object p1, p0, Lcom/squareup/protoparser/MessageType$Field;->label:Lcom/squareup/protoparser/MessageType$Label;

    .line 163
    iput-object p2, p0, Lcom/squareup/protoparser/MessageType$Field;->type:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/squareup/protoparser/MessageType$Field;->name:Ljava/lang/String;

    .line 165
    iput p4, p0, Lcom/squareup/protoparser/MessageType$Field;->tag:I

    .line 166
    iput-object p5, p0, Lcom/squareup/protoparser/MessageType$Field;->documentation:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    .line 168
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    if-ne p0, p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    instance-of v3, p1, Lcom/squareup/protoparser/MessageType$Field;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 221
    check-cast v0, Lcom/squareup/protoparser/MessageType$Field;

    .line 222
    .local v0, that:Lcom/squareup/protoparser/MessageType$Field;
    iget-object v3, p0, Lcom/squareup/protoparser/MessageType$Field;->label:Lcom/squareup/protoparser/MessageType$Label;

    iget-object v4, v0, Lcom/squareup/protoparser/MessageType$Field;->label:Lcom/squareup/protoparser/MessageType$Label;

    invoke-virtual {v3, v4}, Lcom/squareup/protoparser/MessageType$Label;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/MessageType$Field;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/MessageType$Field;->type:Ljava/lang/String;

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/MessageType$Field;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/MessageType$Field;->name:Ljava/lang/String;

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/squareup/protoparser/MessageType$Field;->tag:I

    iget v4, v0, Lcom/squareup/protoparser/MessageType$Field;->tag:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    iget-object v4, v0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    .line 226
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/MessageType$Field;->documentation:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/MessageType$Field;->documentation:Ljava/lang/String;

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDefault()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    const-string v2, "default"

    invoke-static {v1, v2}, Lcom/squareup/protoparser/Option;->findByName(Ljava/util/List;Ljava/lang/String;)Lcom/squareup/protoparser/Option;

    move-result-object v0

    .line 214
    .local v0, defaultOption:Lcom/squareup/protoparser/Option;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDocumentation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/squareup/protoparser/MessageType$Field;->documentation:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Lcom/squareup/protoparser/MessageType$Label;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/squareup/protoparser/MessageType$Field;->label:Lcom/squareup/protoparser/MessageType$Label;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/squareup/protoparser/MessageType$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/squareup/protoparser/MessageType$Field;->tag:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/squareup/protoparser/MessageType$Field;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/squareup/protoparser/MessageType$Field;->label:Lcom/squareup/protoparser/MessageType$Label;

    invoke-virtual {v1}, Lcom/squareup/protoparser/MessageType$Label;->hashCode()I

    move-result v0

    .line 232
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 233
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 234
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/squareup/protoparser/MessageType$Field;->tag:I

    add-int v0, v1, v2

    .line 235
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 236
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->documentation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 237
    return v0
.end method

.method public isDeprecated()Z
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    const-string v2, "deprecated"

    invoke-static {v1, v2}, Lcom/squareup/protoparser/Option;->findByName(Ljava/util/List;Ljava/lang/String;)Lcom/squareup/protoparser/Option;

    move-result-object v0

    .line 202
    .local v0, deprecatedOption:Lcom/squareup/protoparser/Option;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPacked()Z
    .locals 3

    .prologue
    .line 207
    iget-object v1, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    const-string v2, "packed"

    invoke-static {v1, v2}, Lcom/squareup/protoparser/Option;->findByName(Ljava/util/List;Ljava/lang/String;)Lcom/squareup/protoparser/Option;

    move-result-object v0

    .line 208
    .local v0, packedOption:Lcom/squareup/protoparser/Option;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0}, Lcom/squareup/protoparser/Option;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->documentation:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/squareup/protoparser/Utils;->appendDocumentation(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->label:Lcom/squareup/protoparser/MessageType$Label;

    invoke-virtual {v2}, Lcom/squareup/protoparser/MessageType$Label;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/protoparser/MessageType$Field;->type:Ljava/lang/String;

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/protoparser/MessageType$Field;->name:Ljava/lang/String;

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/squareup/protoparser/MessageType$Field;->tag:I

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    const-string v2, " [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v2, p0, Lcom/squareup/protoparser/MessageType$Field;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/Option;

    .line 253
    .local v1, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/squareup/protoparser/Utils;->appendIndented(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v1           #option:Lcom/squareup/protoparser/Option;
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    const-string v2, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
