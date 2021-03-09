//  ForEach.swift
//  Created by Christopher Weems on 11/11/20

public struct ForEach<Data, Content> where Data : RandomAccessCollection {
    
    /// The collection of underlying identified data.
    public var data: Data
    
    /// A function that can be used to generate content on demand given
    /// underlying data.
    public var content: (Data.Element) -> Content
    
    public init(_ data: Data, content: @escaping (Data.Element) -> Content) {
        self.data = data
        self.content = content
        
    }
    
}
